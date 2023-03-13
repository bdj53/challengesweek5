public with sharing class Vehicle {


    public class Vehicle {
        public enum Medium {
            LAND,AIR,WATER
        }
        private Integer Speed;
        private String Name;
        private Integer Occupants;
        static final Capacity = 1;
        List<Medium> Media;  
    }

    public Vehicle()
    {
        Speed = 45;
        Name = "Fred"
        Occupants = 4;
        List<Medium> Media = new List<Medium>();
    }
}