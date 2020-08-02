//
//  ViewController.swift
//  Graph
//
//  Created by iljoo Chae on 8/2/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit
import Charts


class ViewController: UIViewController, ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        barChart.center = view.center
        
        view.addSubview(barChart)
        
        //set up the data
        let set = BarChartDataSet(entries: [
        
            BarChartDataEntry(x:1, y:1),
            BarChartDataEntry(x:2, y:2),
            BarChartDataEntry(x:3, y:3),
            BarChartDataEntry(x:4, y:4),
            BarChartDataEntry(x:5, y:5),
            BarChartDataEntry(x:6, y:6),
            BarChartDataEntry(x:7, y:7),
            BarChartDataEntry(x:8, y:8),
            BarChartDataEntry(x:9, y:9),
        ])
        
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }


}

