class Client:
    def __init__(self, client_id=0, first_name="Unknown", last_name="Unknown", phone="Unknown", email="Unknown"):
        self.__client_id = client_id
        self.__first_name = first_name
        self.__last_name = last_name
        self.__phone = phone
        self.__email = email
        
    # hashable classes MUST implement __hash__ and __eq__ methods
    # __hash__ must return a unique hash value based what makes the object unique
    #  -- eg:  hash(client_id)
    # __eq__ must return True if the object being compared ("other") is the same
    def __hash__(self):
        return hash(self.__client_id)
    
    def __eq__(self, other):
        return self.__client_id == other.__client_id
        
    def get_client_id(self):
        return self.__client_id
    
    def set_client_id(self, client_id ):
        self.__client_id = client_id
        
    def get_first_name(self):
        return self.__first_name
    
    def set_first_name(self, first_name ):
        self.__first_name = first_name
        
    def get_last_name(self):
        return self.__last_name
    
    def set_last_name(self, last_name ):
        self.__last_name = last_name
        
    def get_phone(self):
        return self.__phone
    
    def set_phone(self, phone ):
        self.__phone = phone
        
    def get_email(self):
        return self.__email
    
    def set_email(self, email ):
        self.__email = email
