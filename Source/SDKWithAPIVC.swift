//
//  FrameworkHomeVC.swift
//  FrameworkApp
//
//  Created by Vijay Waghmare on 27/09/22.
//

import UIKit

public class SDKWithAPIVC: UIViewController {
    
    @IBOutlet weak var dataTblView: UITableView!
    public var data: TestModel?
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        dataTblView.dataSource = self
        dataTblView.delegate = self
        dataTblView.estimatedRowHeight = 50
        getData()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnAct(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    public func getData() {
            
            guard let url = URL(string: "https://reqres.in/api/users?page=2") else {
                print("URL is wrong")
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard data != nil else {
                    print("data is nil")
                    return
                }
                //print(error?.localizedDescription)
                let decoder = JSONDecoder()
                let decodedData = try? decoder.decode(TestModel.self, from: data!)
                self.data = decodedData
                //print(decodedData)
                DispatchQueue.main.async {
                    self.dataTblView.reloadData()
                }
                print("Check some here")
            }.resume()
        }
    
}

extension SDKWithAPIVC: UITableViewDataSource, UITableViewDelegate{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.data?.count ?? 0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DataTblCell", for: indexPath) as? DataTblCell{
            cell.textLbl.text = data?.data?[indexPath.row].first_name ?? "No Data"
            return  cell
        }
        return UITableViewCell()
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
