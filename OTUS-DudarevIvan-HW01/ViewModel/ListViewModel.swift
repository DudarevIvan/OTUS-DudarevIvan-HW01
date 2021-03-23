//
//  ListViewModel.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import Foundation
import Networking

class ListViewModel: ObservableObject {
    
    @Published var list: NASAModel?
    
    init() {
        fetchList()
    }
    
    func fetchList() {
        Networking.shared.loadData { (result: Result<NASAModel, NetworkError>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self.list = data
                }
            case.failure(let error):
                DispatchQueue.main.async {
                    print(error)
                }
            }
        }
    }
    
}
