//
//  Configuration.swift
//  Assessment
//
import Foundation

fileprivate struct Defaults {
    static let reachabilityHost = "www.apple.com"
    static let UserAgentKey = "User-Agent"
}

enum Server {
    case developement
    case production
}

extension Application {
    
    struct Configuration {
        
        /// Add Target conditions here and set defualt server here based on Target.
        #if DEBUG
        static let server: Server = .developement
        #else
        static let server: Server = .production
        #endif
        
        /// To print the log set true.
        static let debug: Bool = (server == .developement)
        
        static var APIBaseURL: String {
            switch self.server {
            case .developement:
                return API("https://api.nytimes.com/")
            case .production:
                return API("https://api.nytimes.com/")
            }
        }
        
        static func APIAccessToken() -> String {
            switch self.server {
            case .developement:
                return Application.token
            case .production:
                return Application.token
            }
        }
        
        static func API(_ string: String) -> String {
            if server == .developement {
                print("URL WARNING...!");
                
                print("__        ___    ____  _   _ ___ _   _  ____ _");
                print("\\ \\      / / \\  |  _ \\| \\ | |_ _| \\ | |/ ___| |");
                print(" \\ \\ /\\ / / _ \\ | |_) |  \\| || ||  \\| | |  _| |");
                print("  \\ V  V / ___ \\|  _ <| |\\  || || |\\  | |_| |_|");
                print("   \\_/\\_/_/   \\_\\_| \\_\\_| \\_|___|_| \\_|\\____(_)");
                print("");
                print("  ____  _              _               _   _ ____  _     _");
                print(" / ___|| |_ __ _  __ _(_)_ __   __ _  | | | |  _ \\| |   | |");
                print(" \\___ \\| __/ _` |/ _` | | '_ \\ / _` | | | | | |_) | |   | |");
                print("  ___) | || (_| | (_| | | | | | (_| | | |_| |  _ <| |___|_|");
                print(" |____/ \\__\\__,_|\\__, |_|_| |_|\\__, |  \\___/|_| \\_\\_____(_)");
                print("                 |___/         |___/");
            }
            else {
                
            }
            
            return string
        }
    }
}
