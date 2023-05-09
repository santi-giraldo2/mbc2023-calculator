import Float "mo:base/Float";
import Int "mo:base/Int";

actor Calculator {
    // public func multiply(n : Nat, m : Nat) : async Nat {
    //     return n * m;
    // };

    // public func volume(n : Nat) : async Nat {
    //     return n * n * n;
    // };

    // public func hours_to_minutes(n : Nat) : async Nat {
    //     return n * 60;
    // };

    // var counter : Nat = 0;

    // public func set_counter(n : Nat) : async () {
    //     counter := n;
    // };

    // public func get_counter() : async Nat {
    //     return counter;
    // };

    // public func test_divide(n : Nat, m : Nat) : async Bool {
    //     return m % n == 0;
    // };

    // public func is_even(n : Nat) : async Bool {
    //     return n % 2 == 0;
    // };

    var counter : Float = 0;

    public func add(x : Float) : async Float {
        counter := counter + x;
        return counter;
    };

    public func sub(x : Float) : async Float {
        counter := counter - x;
        return counter;
    };

    public func mul(x : Float) : async Float {
        counter := counter * x;
        return counter;
    };

    public func div(x : Float) : async ?Float {
        if (x == 0) {
            return null;
        } else {
            counter := counter / x;
            return ?counter;
        };
    };

    public func reset() : async () {
        counter := 0;
    };

    public query func see() : async Float {
        return counter;
    };

    public func power(x : Float) : async Float {
        counter := Float.pow(counter, x);
        return counter;
    };

    public func sqrt() : async Float {
        counter := Float.sqrt(counter);
        return counter;
    };

    public func floor() : async Int {
        counter := Float.floor(counter);
        return Float.toInt(counter);
    };
};
