import SwiftData
import SwiftUI

@Observable
@MainActor
class DataContainer{
    let modelContainer: ModelContainer
    
    var context: ModelContext{
        modelContainer.mainContext
    }
    
    init(includeSampleMoments: Bool = false){
        let schema = Schema([
            Moment.self,
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: includeSampleMoments)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            if includeSampleMoments {
                loadSampleMoments()
            }
            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    private func loadSampleMoments(){
        for moment in Moment.sampleData {
            context.insert(moment)
        }
    }
    static let sample = DataContainer(includeSampleMoments: true)
}




extension View {
    func sampleDataContainer() -> some View {
        let container = DataContainer.sample
        return self
            .environment(container)
            .modelContainer(container.modelContainer)
    }
}
