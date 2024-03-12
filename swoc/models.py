from django.db import models

class registration(models.Model):
    name=models.CharField(max_length=150)
    dept=models.CharField(max_length=150)
    sem=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    phone=models.CharField(max_length=150)
    address=models.CharField(max_length=150)
    username=models.CharField(max_length=150)
    password=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
   

   
class addexternalmentors(models.Model):
    name=models.CharField(max_length=150)
    image=models.FileField(max_length=150)
    dept=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    phone=models.CharField(max_length=150)
    address=models.CharField(max_length=150)
    username=models.CharField(max_length=150)
    password=models.CharField(max_length=150)
    type=models.CharField(max_length=150)



class bookedstudents(models.Model):
    sid=models.CharField(max_length=150)
    dept=models.CharField(max_length=150)
    sem=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    phone=models.CharField(max_length=150)
    exmentorid=models.CharField(max_length=150)
    name=models.CharField(max_length=150)
class feedback(models.Model):
    studid=models.CharField(max_length=150)
   
    feedback=models.CharField(max_length=150)
    
class skill(models.Model):
    studid=models.CharField(max_length=150)
   
    skill=models.CharField(max_length=150)
    
class complaint(models.Model):
    user_id=models.CharField(max_length=150)
    complaint=models.CharField(max_length=150)
        
class stud_attendance(models.Model):
    studentid=models.CharField(max_length=150)
    Date=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    
class addsurvey(models.Model):
    studid=models.CharField(max_length=150)
    name=models.CharField(max_length=150)
    dept=models.CharField(max_length=150)
    sem=models.CharField(max_length=150)
    strength=models.CharField(max_length=150)
    weakness=models.CharField(max_length=150)
    opportunities=models.CharField(max_length=150)
    description=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
       
class addprograms(models.Model):
    name=models.CharField(max_length=150)
    pgtype=models.CharField(max_length=150)
    description=models.CharField(max_length=150)
    link=models.CharField(max_length=150)
    date=models.CharField(max_length=150)
    time=models.CharField(max_length=150)

class tests(models.Model):
    name=models.CharField(max_length=150)
    stud_id=models.CharField(max_length=150)
    date=models.CharField(max_length=150)
    link=models.CharField(max_length=150)
    typee=models.CharField(max_length=150)
    mid=models.CharField(max_length=150)
    result=models.CharField(max_length=150)
    status=models.CharField(max_length=150)

class chats(models.Model):
    s_id=models.CharField(max_length=150)
    m_id=models.CharField(max_length=150)
    s_msg=models.CharField(max_length=150)
    m_msg=models.CharField(max_length=150)
    