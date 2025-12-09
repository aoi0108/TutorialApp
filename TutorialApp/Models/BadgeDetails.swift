import Foundation

enum BadgeDetails {
    case firstEntry
    case fiveStars
    case shutterbug
    case expressive
    case perfectTen
    
    var requirements : String {
        switch self {
            
        case.firstEntry:
            return "Log a moment to start your journey."
        
        case .fiveStars:
            return "Record five moments."
            
        
        case .shutterbug:
            return "Add three entries with photos."
        
        case .expressive:
            return "Add five moments with a photo and text."
        
        case .perfectTen:
            return "Record at least 10 moments, collecting all the other badges along the way."
            
        }
        
    }
    
    var congratulatoryMessage: String {
        switch self {
        case .firstEntry:
            return "Every journey begins with a single step. Congratulations — you’re on your way!"
            
        case .fiveStars:
            return "You’re building momentum! The more you focus on regular practice, the better you get at choosing to keep up your intentioned habits."
            
        case .shutterbug:
            return "Photos connect us to our past, and looking at them can take us right back to the grateful feeling we had when we snapped them."
            
        case .expressive:
            return "Look at you, giving yourself all the ways to savor your happy memories!"
        
        case .perfectTen:
            return "You're getting the hang of your new habit! Keep it up and see how far it can take you."
        }
    }
}


