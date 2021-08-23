from rest_framework import serializers
from . models import employee

class EmployeeSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = employee
        #fields = ('firstName','lastName')
        fields = '__all__'