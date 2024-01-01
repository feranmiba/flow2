pub contract projectResource {


         pub var emptyDictionary: @{String: empty}



        pub resource empty {
            pub let numb: Int
            init(_num: Int) {
            self.numb = _num
            }
        }

        pub fun getReference(key: String): &empty {
    return (&self.emptyDictionary[key] as &empty?)!
         }

         init() {
        self.emptyDictionary <- {
            "Hello!": <- create empty(_num: 1), 
            "Bonjour!": <- create empty(_num: 3)
        }
    }





    

}