class Computer:
  
    def __init__(self, processor):
        self.processor = processor
    
    def demo(self):
        print("Demo Function")
    
    def config(self):
        print(self.processor, "16 GB RAM, 1 TB")
        
        
class MacBook(Computer):
    def __init__(self, type):
        self.type = type
    def dd(self):
        print("Hello")
        
    def config(self):
        print(self.processor, "16 GB RAM, 1 TB", self.type)
         
        
        
        
#computer1 = Computer("P2")
#computer1.processor #= "i3"
#computer1.processor = "i7"

#print(type(computer1))
#computer1.config()

mackBook1 = MacBook("uyuy")
mackBook1.config()