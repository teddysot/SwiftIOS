import UIKit

class Weapon
{
    let damage : Int = 100
}

class Fighter
{
    var name : String
    var myWeapon : Weapon?
    
    required init(n : String)
    {
        name = n
    }
    
    // Write a function called 'StupidAttack'
    // If they have a weapon, print out "Name does N damage"
    // If they do not, CRASH
    
    func StupidAttack()
    {
        if let myWeapon = myWeapon
        {
            print("\(name) does \(myWeapon.damage) damage")
        }
    }
    
    // Write a function called 'BetterAttack'
    // Same as above if they have a weapon
    // If they do not, print out "NAME attacks with their puny fist doing 1 damage"
    func BetterAttack()
    {
        if let myWeapon = myWeapon
        {
            print("\(name) does \(myWeapon.damage) damage")
        }
        else
        {
            print("\(name) attacks with their puny fist doing 1 damage")
        }
    }
    
    
    // Write a function called BetterDefaultAttack
    // same as above but uses ??
    
    func BetterDefaultAttac()
    {
        print("\(name) does \(myWeapon?.damage ?? 1) damage")
    }
    
    // Write a function called GuardedAttack
    // If they don't have a weapon, the attack just silently returns
    // It uses a guard statement
    
    func GuardedAttack()
    {
        guard let myWeapon = myWeapon
        else
        {
            print("myWeapon can't be null")
            return
        }
        print("\(name) does \(myWeapon.damage) damage")
    }
    
    
}

var F = Fighter(n: "The Fighter With No Name")
F.StupidAttack()
