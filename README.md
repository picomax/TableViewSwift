# 초간단 TableView 샘플 코드

아래 배열을 출력하는 테이블 뷰
var items: [String] = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg", "Noodle with BBQ Pork", "Japanese Noodle with Pork", "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini"]


## TestTableView1
ViewController 내부에 Delegate, DataSource 관련 코드 작성한 방식
> class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

## TestTableView2
ViewController 외부 Delegate, DataSource 관련 코드 작성한 방식
> extension ViewController: UITableViewDataSource
> extension ViewController: UITableViewDelegate

## 스크린샷

![](http://www.picomax.net/xe/files/attach/images/207/332/073/5f9ac035fcd9c848e7dcaf7c6653a1c7.png)



## 현재 상태

강의용 샘플 버전이며, 추후 업데이트 할 예정.


## 라이선스

Copyright (c) 2016, [Jeong-Hoon Mo](https://github.com/picomax).
All rights reserved.

[http://picomax.net/73332](http://picomax.net/73332)

