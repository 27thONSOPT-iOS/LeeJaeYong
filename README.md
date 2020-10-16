# LeeJaeYong
**27th iOS파트 이재용**



| 세미나 | 주제                                                   | 날짜         |
| ------ | ------------------------------------------------------ | ------------ |
| 1주차  | iOS/Swift 기초, Xcode 기본 사용법, View 화면 전환 방법 | ~ 2020.10.16 |
| 2주차  | AutoLayout, StackView, ScrollView                      | ~ 2020.10.23 |
| 3주차  | Delegate Pattern, TableView, CollectionView            |              |
| 4주차  | Animation, TabBarController, Cocoapods                 |              |
| 5주차  | 디자인 합동 세미나                                     |              |
| 6주차  | Networking Rest API + 솝커토                           |              |
| 7주차  | 서버 합동 세미나                                       |              |
| 8주차  | 기획 경선 + Open API + 앱잼 전 보충 세미나             |              |



## 1주차 과제

**Present, Push, Pop 사용해보기**

<img width="30%" src="https://user-images.githubusercontent.com/56102421/96228401-82fa7b80-0fd0-11eb-90d5-ffa59a0210f6.gif" alt="" /> 

### 도전과제: 데이터 전달

present로 데이터 전달을 할 경우엔 VC를 불러와 그 안에 데이터에 전달하면 되지만, dismiss를 할 때 데이터를 전달할 경우엔 NotificationCenter을 이용하여 데이터를 전달해주어야 참조할 때 꼬이지 않는다!

ViewController.swift

```swift
override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(login), name: .init("login"), object: nil)
}

@objc func login(_ notification: Notification) {
        
        guard let info = notification.userInfo as? [String: Any] else { return }
        let partText: String? = info["part"] as? String
        let nameText: String? = info["name"] as? String
        
        partLabel.text = partText == "" ? "iOS" : partText
        welcomeLabel.text = nameText == "" ? "이재용님 안녕하세요~!!" : nameText
}
```



LoginViewController.swift

```swift
@IBAction func loginPressed(_ sender: UIButton) {
        if let partText = partTextField.text, let nameText = nameTextField.text {
            NotificationCenter.default.post(name: .init("login"), object: nil, userInfo: ["part": partText ,"name": nameText])
        }
        
        self.dismiss(animated: true, completion: nil)
}
```

