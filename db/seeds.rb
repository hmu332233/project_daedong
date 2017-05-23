# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tent.delete_all

Tent.create(name: "주님곁으로(분자생물학과)",location: "01", content: "",menu_content: "")
Tent.create(name: "유기소재파이버공학과",location: "02", content: "",menu_content: "")
Tent.create(name: "독일학과",location: "03", content: "",menu_content: "")
Tent.create(name: "생물환경화학과",location: "04", content: "",menu_content: "")
Tent.create(name: "기계설계공학부",location: "05", content: "",menu_content: "")
Tent.create(name: "구식당(지구환경과학과)",location: "06", content: "",menu_content: "")
Tent.create(name: "BOP(전자공학부)",location: "07", content: "",menu_content: "")
Tent.create(name: "화학공학부",location: "08", content: "",menu_content: "")
Tent.create(name: "자 원샷!",location: "09", content: "",menu_content: "")
Tent.create(name: "다퍼주막(스포츠과학과)",location: "10", content: "",menu_content: "")
Tent.create(name: "건축공학과",location: "11", content: "",menu_content: "")
Tent.create(name: "청사초롱(국어국문)",location: "12", content: "",menu_content: "")
Tent.create(name: "보리",location: "13", content: "",menu_content: "")
Tent.create(name: "Noncolor",location: "14", content: "",menu_content: "")
Tent.create(name: "엔터테이먼트",location: "15", content: "",menu_content: "")
Tent.create(name: "쌈사라(식품유통학과)",location: "16", content: "",menu_content: "")
Tent.create(name: "체육교육과",location: "17", content: "",menu_content: "")
Tent.create(name: "식품공학과",location: "18", content: "안녕하세요 전북대학교 학우 여러분~☺
D-2! 대동제가 이틀밖에 남지 않았습니다! 5월 24일부터 26일까지 삼일동안 식품공학과 주막이 운영됩니다👏👏
여러가지 다양한 안주부터 한 번 먹으면 또 먹고 싶은 홍초소주까지!
🐰酒토피아🐰 에서 보내는 신나는 축제에 여러분들의 많은 참여부탁드려요~❤❤❤",menu_content: "")
Tent.create(name: "동물자원과학과",location: "19", content: "",menu_content: "")
Tent.create(name: "조경학과",location: "20", content: "",menu_content: "")
Tent.create(name: "통계학과",location: "21", content: "",menu_content: "")
Tent.create(name: "행쇼 총학생회",location: "22", content: "",menu_content: "")
Tent.create(name: "예술대 학생회",location: "23", content: "",menu_content: "")
Tent.create(name: "과학학과",location: "24", content: "",menu_content: "")
Tent.create(name: "물리학과",location: "25", content: "",menu_content: "")
Tent.create(name: "IT정보공학과",location: "26", content: "",menu_content: "")
Tent.create(name: "대IT응용노빠꾸포차",location: "27", content: "",menu_content: "")
Tent.create(name: "샤크",location: "28", content: "",menu_content: "")
Tent.create(name: "공식당",location: "29", content: "🔥기대공대 주막 공식당🔥

#기대공대 전회장님 마음대로
#주막 #open

🎈일시 : 5월 24-26일
               오후 6시 ~
🎈장소 : 테니스장 옆
              가장 안쪽 자리

양과 맛으로 승부하는 공대 주막!
많이 놀러와주시길 바랍니다💙
친구에게 메시지 공유하기",menu_content: "")
Tent.create(name: "토목공학과",location: "30", content: "",menu_content: "")
Tent.create(name: "지역건설공학과 학생회",location: "31", content: "",menu_content: "")
Tent.create(name: "너나울",location: "32", content: "",menu_content: "")
Tent.create(name: "돈모아나(화학과)",location: "33", content: "",menu_content: "")
Tent.create(name: "취하고시펑??더먹고시펑?(생명과학과)",location: "34", content: "",menu_content: "")

Tent.all.each do |tent|

tent.pic_url = "/img/poster/#{tent.location}.jpg"
tent.save

end