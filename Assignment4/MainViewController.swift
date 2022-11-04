//
//  ViewController.swift
//  Assignment4
//
//  Created by Khakim Zhumagaliyev on 24.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private var type = [Type]()
    
    private var figure: String = "pen"
    
    func setType(figure: String) {
        self.figure = figure
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
        view.backgroundColor = UIColor.lightGray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            if figure == "circle" {
                let circleCenter = touch.location(in: view)
                
                let circleWidth = CGFloat(25 + (arc4random() % 50))
                let circleHeight = circleWidth
                    
                let circleView = CircleView(frame: CGRect(x: circleCenter.x, y: circleCenter.y, width: circleWidth, height: circleHeight))
                view.addSubview(circleView)
            } else if figure == "rectangle" {
                let point = touch.location(in: view)
                
                let width = CGFloat(120 + (arc4random() % 50))
                let hight = CGFloat(100 + (arc4random() % 50))
                
                let rectangleView = RectangleView(frame: CGRect(x: point.x, y: point.y, width: width, height: hight))
                view.addSubview(rectangleView)
                
            } else if figure == "stroke" {
                
            } else if figure == "triangle" {
                let point = touch.location(in: view)
                
                let width = CGFloat(120 + (arc4random() % 50))
                let hight = CGFloat(120 + (arc4random() % 50))
                
                let triangleView = TriangleView(frame: CGRect(x: point.x, y: point.y, width: width, height: hight))
                view.addSubview(triangleView)
            } else {
                
            }
            
        }
    }
    
    
    let circleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "circle"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleCircle), for: .touchUpInside)
        return button
    }()
    
    @objc func handleCircle() {
        setType(figure: "circle")
    }
    
    let rectangleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "rectangle"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleRectangle), for: .touchUpInside)
        return button
    }()
    
    @objc func handleRectangle() {
        setType(figure: "rectangle")
    }
    
    let strokeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "line"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleStroke), for: .touchUpInside)
        return button
    }()
    
    @objc func handleStroke() {
        setType(figure: "stroke")
    }
    
    let triangleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "triangle"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handleTriangle), for: .touchUpInside)
        return button
    }()
    
    @objc func handleTriangle() {
        setType(figure: "triangle")
    }
    
    let penButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "pen"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        button.addTarget(self, action: #selector(handlePen), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePen() {
        setType(figure: "pen")
    }
    
    let fillSwitcher: UISwitch = {
        let fill = UISwitch()
        fill.setOn(false, animated: true)
        fill.addTarget(self, action: #selector(handleFillSwitcher), for: .valueChanged)
        return fill
    }()
    
    @objc func handleFillSwitcher(_ switch: UISwitch) {
//        canvas.setFill(fill: self.fillSwitcher.isOn)
    }
    
    let fillLabel: UILabel = {
        let label = UILabel()
        label.text = "Fill"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    let undoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "undo"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.tintColor = .black
        return button
    }()
    
    @objc private func handleUndo() {
//        canvas.undo()
    }
    
    @objc func handleClear() {
//        canvas.clear()
    }
    
    let orangeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let blueButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let purpleButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let pinkButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.systemPink
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let redButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let greenButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let yellowButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    let brownButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .brown
        button.addTarget(self, action: #selector(handleColorChange), for: .touchUpInside)
        return button
    }()
    
    @objc private func handleColorChange(button: UIButton) {
//        canvas.setStrokeColor(color: button.backgroundColor ?? .black)
    }

    private func setupLayout() {
        
        let figures = UIStackView(arrangedSubviews: [circleButton, rectangleButton, strokeButton, triangleButton, penButton])
        
        figures.distribution = .fillEqually
        
        let colorsStackView = UIStackView(arrangedSubviews: [orangeButton, blueButton, pinkButton, purpleButton, redButton, greenButton, yellowButton, brownButton])
        colorsStackView.distribution = .fillEqually
        
        let switcherStackView = UIStackView(arrangedSubviews: [fillLabel, fillSwitcher])
        
        let stackView = UIStackView(arrangedSubviews: [
            figures,
            switcherStackView,
            colorsStackView,
            undoButton
        ])
        
        stackView.spacing = 14
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = .white
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        fillSwitcher.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 30).isActive = true
        fillLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: -11).isActive = true
            
        colorsStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}

