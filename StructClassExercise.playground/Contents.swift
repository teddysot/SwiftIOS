import UIKit

class Monster
{
    let entityType = "Monster"
    let name : String
    let alignment : String
    var hitPoints : Int
    var attackPercentage : Double
    
    required init( n : String, a : String, h : Int, ap : Double)
    {
        name = n
        alignment = a
        hitPoints = h
        attackPercentage = ap
    }
}

let M = Monster (n: "Cookie", a: "Hungry", h: 12, ap: 1.00)
M.hitPoints = 10;

var M2 = Monster(n: "G", a: "X", h: 13, ap: 1.00)

M2 = M
M2.hitPoints = 0

print("M's hitpoints \(M.hitPoints)")

struct Weapon
{
    let name : String
    var ammoCount : Int
    
    mutating func Shoot()
    {
        if(ammoCount > 0)
        {
            print("Shooting")
            ammoCount = ammoCount - 1
        }
    }
}

var myWeapon = Weapon(name: "M4A1", ammoCount: 30)
myWeapon.Shoot()

var otherGun = myWeapon
otherGun.Shoot()
otherGun.Shoot()
print("myWeapon ammo is \(myWeapon.ammoCount)")

var myInteger : Int?

if let myTempInteger = myInteger {
    print(myInteger)
}

