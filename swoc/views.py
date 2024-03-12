from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.shortcuts import redirect , get_object_or_404
from django.urls import reverse
from  django.core.files.storage import FileSystemStorage
from .models import *

def index(request):
    return render(request,'index.html')

def chatuser(request):
    return render(request,'chat_user.html')


def index1(request):
    return render(request,'index.html')
def servey(request):
    return render(request,'servey.html')
def dash(request):
    return render(request,'admin/index.html')
    
def pprogram(request):
    return render(request,'admin/pprogram.html')
def userfeedback(request):
    return render(request,'userfeedback.html')
def usercomplaint(request):
    return render(request,'usercomplaint.html')
def mentor(request):
    sel=addexternalmentors.objects.filter(type='Internal')
    sel1=addexternalmentors.objects.filter(type='External')
    return render(request,'admin/mentor.html',{'res':sel,'res1':sel1})
    
def register(request):
    return render(request,'register.html')
def login(request):
    return render(request,'login.html')
def viewstudents(request):
    sel=registration.objects.all()
    return render(request,'admin/viewstudents.html',{'result':sel})
    
def viewadminskill(request):
    sel=skill.objects.all()
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.studid)==str(j.id):
                i.studid=j.name
    return render(request,'admin/viewskill.html',{'result':sel})
    
def viewuserprograms(request):
    sel=addprograms.objects.all()
    return render(request,'viewprograms.html',{'result':sel})

def viewusertest(request):
    uid=request.session['uname']
    sel=tests.objects.filter(stud_id=uid)
    return render(request,'viewusertest.html',{'result':sel})
        
def viewadminprogram(request):
    sel=addprograms.objects.all()
    return render(request,'admin/viewadminprogram.html',{'result':sel})

def viewtestresadmin(request):
    sel=tests.objects.all()
    sel1=addexternalmentors.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.mid)==str(j.id):
                i.mid=j.name
    return render(request,'admin/viewtestresadmin.html',{'result':sel})
    
def mentorfeedback(request,id):
    sel=registration.objects.get(name=id)
    idd=sel.id
    name=sel.name
    sel1=feedback.objects.filter(studid=idd)

    return render(request,'admin/mfeedback.html',{'result':sel1,'sid':name})
    
def viewuserattendence(request):
    mid=request.session['uname']
    sel=stud_attendance.objects.filter(studentid=mid)
    return render(request,'viewattendences.html',{'result':sel})
    
def assign(request):
    approved_registrations = registration.objects.filter(status='approved').exclude(id__in=bookedstudents.objects.values('sid'))
    sel1=addexternalmentors.objects.all()
    return render(request,'admin/assign.html',{'result':approved_registrations,'res':sel1})

def adddskill(request,id):
    sel=registration.objects.filter(name=id)   
    sel1=addexternalmentors.objects.all()
    return render(request,'admin/assign.html',{'result':sel,'res':sel1})

def viewmentservey(request,id):
    sel=registration.objects.get(name=id)
    idd=sel.id
    name=sel.name
    sel1=addsurvey.objects.filter(studid=idd)
    return render(request,'admin/viewserveyy.html',{'result':sel1,'res':name})
    
def ccomplaint(request,id):
    sel=registration.objects.get(name=id)
    idd=sel.id
    name=sel.name
    sel1=complaint.objects.filter(user_id=idd)
    return render(request,'admin/ccomplaint.html',{'result':sel1,'res':name}) 
def viewstudservey(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/viewstudservey.html',{'result':sel})
    
def mentattendence(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/attendencee.html',{'result':sel})
    
    
def viewadmincomplaint(request):
    sel=complaint.objects.all()
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.user_id)==str(j.id):
                i.user_id=j.name
    return render(request,'admin/viewadmincomplaint.html',{'result':sel})    
def Viewadminservey(request):
    sel=addsurvey.objects.all()
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.studid)==str(j.id):
                i.studid=j.name
    return render(request,'admin/Viewadminservey.html',{'result':sel})
def addskill(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/addskill.html',{'result':sel})

def addtest(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/addtest.html',{'result':sel})

        
def addmentest(request):
    if request.method=="POST":
        mid=request.session['mid']
        sid=request.POST.get('sid')
        name=request.POST.get('name')
        date=request.POST.get('date')
        typee=request.POST.get('typee')
        link=request.POST.get('link')
        
        ins=tests(stud_id=sid,name=name,date=date,typee=typee,link=link,mid=mid,result='pending',status='pending')
        ins.save()
        return render(request,'admin/index.html',{'status':'Added Successfully'})
    
def addtestresult(request):
    mid=request.session['mid']
    sel=tests.objects.filter(mid=mid)
    return render(request,'admin/viewusertestresults.html',{'result':sel})

def addresultss(request, id):
    if request.method == 'POST':
        survey = get_object_or_404(tests, id=id)
        result = request.POST.get('result')
        survey.result = result
        survey.save()
        return redirect(addtestresult)

    
def testcmplt(request, id):
    survey = get_object_or_404(tests, id=id)
    survey.status = 'completed'
    survey.save()
    return redirect(viewusertest)

def mentorfeedb(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/viewf.html',{'result':sel})
    
def viewmentorstudents(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()

    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/viewmentorstudent.html',{'result':sel})
    
def viewwcompl(request):
    mid=request.session['mid']
    sel=bookedstudents.objects.filter(exmentorid=mid)
    sel1=registration.objects.all()

    for i in sel:
        for j in sel1:
            if str(i.sid)==str(j.id):
                i.sid=j.name
    return render(request,'admin/viewwcompl.html',{'result':sel})
def approvestud(request,id):
    sel=registration.objects.get(id=id)
    name=sel.name
    dept=sel.dept
    sem=sel.sem
    phone=sel.phone
    address=sel.address
    username=sel.username
    password=sel.password
    email=sel.email
    idd=sel.id
    ins=registration(name=name,email=email,phone=phone,address=address,dept=dept,password=password,sem=sem,username=username,status='approved',id=idd)
    ins.save()
    return redirect(viewstudents)
    
def approvesur(request,id):

    sel=addsurvey.objects.get(id=id)
    studid=sel.studid
    name=sel.name
    sem=sel.sem
    dept=sel.dept
    strength=sel.strength
    weakness=sel.weakness
    opportunities=sel.opportunities
    description=sel.description
    idd=sel.id
    ins=addsurvey(studid=studid,name=name,sem=sem,dept=dept,strength=strength,weakness=weakness,opportunities=opportunities,description=description,status='approved',id=idd)
    ins.save()
    return redirect(viewstudservey)
def rejectstud(request,id):
    sel=registration.objects.get(id=id)
    name=sel.name
    dept=sel.dept
    sem=sel.sem
    phone=sel.phone
    address=sel.address
    username=sel.username
    password=sel.password
    email=sel.email
    idd=sel.id
    ins=registration(name=name,email=email,phone=phone,address=address,dept=dept,password=password,sem=sem,username=username,status='rejected',id=idd)
    ins.save()
    return redirect(viewstudents)

def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index)
def adduser(request):
    if request.method=="POST":
        name=request.POST.get('name')
        email=request.POST.get('email')
        phone=request.POST.get('phone')
        address=request.POST.get('address')
        dept=request.POST.get('dept')
        password=request.POST.get('password')
        username=request.POST.get('username')
        semester=request.POST.get('semester')

        ins=registration(name=name,email=email,phone=phone,address=address,dept=dept,password=password,sem=semester,username=username,status='pending')
        ins.save()
        return render(request,'register.html',{'status':'Register Successfully'})
        
        
def addmentprg(request):
    if request.method=="POST":
        name=request.POST.get('name')
        decription=request.POST.get('decription')
        link=request.POST.get('link')
        date=request.POST.get('date')
        time=request.POST.get('time')
        pgtype=request.POST.get('type')
        
        ins=addprograms(name=name,description=decription,link=link,date=date,time=time,pgtype=pgtype)
        ins.save()
        return render(request,'admin/pprogram.html',{'status':' Successfully Added'})
        
def addmentattendencee(request):
    if request.method=="POST":
        sid=request.POST.get('sid')
        date=request.POST.get('date')
        status=request.POST.get('status')
        
        ins=stud_attendance(studentid=sid,Date=date,status=status)
        ins.save()
        return render(request,'admin/attendencee.html',{'status':' Successfully Added'})
        
def adddsur(request):
    if request.method=="POST":
        strength=request.POST.get('strength')
        weakness=request.POST.get('weakness')
        opportunities=request.POST.get('opportunities')
        description=request.POST.get('description')
        uid=request.session['uid']
        sell=registration.objects.get(id=uid)
        name=sell.name
        dept=sell.dept
        sem=sell.sem
            
        ins=addsurvey(name=name,dept=dept,sem=sem,studid=uid,strength=strength,weakness=weakness,opportunities=opportunities,description=description,status='pending')
        ins.save()
        return render(request,'servey.html',{'status':' Successfully Added'})
        
def adduserfeedback(request):
    if request.method=="POST":
        feedback1=request.POST.get('feedback')
        studid=request.session['uid']
        
            
        ins=feedback(feedback=feedback1,studid=studid)
        ins.save()
        return render(request,'userfeedback.html',{'status':' Successfully Added'})
        
                
def addusercomplaint(request):
    if request.method=="POST":
        complaint1=request.POST.get('complaint')
        studid=request.session['uid']
        
            
        ins=complaint(complaint=complaint1,user_id=studid)
        ins.save()
        return render(request,'usercomplaint.html',{'status':' Successfully Added'})
        
        
def addmentor(request):
    if request.method=="POST":
        name=request.POST.get('name')
        email=request.POST.get('email')
        phone=request.POST.get('phone')
        address=request.POST.get('address')
        dept=request.POST.get('dept')
        password=request.POST.get('password')
        username=request.POST.get('username')
        type=request.POST.get('type')
        image=request.FILES['image']
        fs=FileSystemStorage()
        img=fs.save(image.name,image)
        ins=addexternalmentors(name=name,email=email,phone=phone,address=address,type=type,image=image,dept=dept,password=password,username=username)
        ins.save()
        return render(request,'admin/mentor.html',{'status':'Added Successfully'})
        
        
        
def addassign(request):
    if request.method=="POST":
        sid=request.POST.get('sid')
        mid=request.POST.get('mid')
        s=registration.objects.get(id=sid)
        a=s.dept
        b=s.sem
        c=s.email
        d=s.phone
        e=s.name
        ins=bookedstudents(sid=sid,exmentorid=mid,dept=a,sem=b,email=c,phone=d,name=e)
        ins.save()
        return render(request,'admin/assign.html',{'status':'Added Successfully'})
        
        
def addmenskill(request):
    if request.method=="POST":
        sid=request.POST.get('sid')
        skill1=request.POST.get('skill')
        
        ins=skill(studid=sid,skill=skill1)
        ins.save()
        return render(request,'admin/addskill.html',{'status':'Added Successfully'})
        
        
        


def addlogin(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password =='admin':
        request.session['logintdetail'] = email
        request.session['admin'] = 'admin'
        return render(request,'admin/index.html')

    elif registration.objects.filter(email=email,password=password,status='approved').exists():
        userdetails=registration.objects.get(email=request.POST['email'], password=password,status='approved')
        if userdetails.password == request.POST['password']:
            request.session['uaddress']=userdetails.address
            request.session['uid'] = userdetails.id
            request.session['uname'] = userdetails.name

            request.session['uemail'] = email

            request.session['user'] = 'user'


            return render(request,'index.html')


    elif addexternalmentors.objects.filter(email=email,password=password).exists():
        userdetails=addexternalmentors.objects.get(email=request.POST['email'], password=password)
        if userdetails.password == request.POST['password']:
            request.session['mid'] = userdetails.id
            request.session['mname'] = userdetails.name

            request.session['memail'] = email

            request.session['mentor'] = 'mentor'


            return render(request,'admin/index.html')
   
    else:
        return render(request, 'login.html', {'status': 'Invalid Email or Password'})
        
      

def chatuser(request):
    s_id = request.session['uid']
    try:
        booked_student = bookedstudents.objects.get(sid=s_id)
        mentor_id = booked_student.exmentorid
    except bookedstudents.DoesNotExist:
        mentor_id = None  # Handle the case where the student is not found

    mentor_name = None
    if mentor_id is not None:
        try:
            mentor = addexternalmentors.objects.get(id=mentor_id)
            mentor_name = mentor.name
        except addexternalmentors.DoesNotExist:
            mentor_name = None  
    cht = chats.objects.filter(s_id=s_id, m_id=mentor_id)     

    return render(request,'chat_user.html', {'chat': cht,'mntr':mentor_name})

def addchat_std(request):
    if request.method == 'POST':
        s_id = request.session['uid']
        message = request.POST.get('message')
        
        # Retrieve the mentor ID for the corresponding student
        try:
            booked_student = bookedstudents.objects.get(sid=s_id)
            mentor_id = booked_student.exmentorid
        except bookedstudents.DoesNotExist:
            mentor_id = None  # Handle the case where the student is not found
        
        ins = chats(s_id=s_id, s_msg=message,  m_id=mentor_id)  # Assuming you have a mentor_id field in the 'chats' model
        ins.save()
                
    return redirect(chatuser)

def viewchat(request):
    mid=request.session['mid']
    stud=bookedstudents.objects.filter(exmentorid=mid)
    return render(request,'admin/viewchat.html',{'result':stud})

def chatmentor(request,id):
    m_id = request.session['mid']
    st_id = registration.objects.get(id=id)    
    s_id=st_id.id
    # print (s_id)
    s_name = st_id.name
    cht = chats.objects.filter(s_id=s_id, m_id=m_id)     
    return render(request,'chat_mentor.html', {'chat': cht,'stud':s_name,'student':s_id})

def addchat_mnt(request):
    if request.method == 'POST':
        m_id = request.session['mid']
        message = request.POST.get('message') 
        s_id = request.POST.get('s_id') 
        ins = chats(s_id=s_id, m_msg=message, m_id=m_id)
        ins.save()
        
        # Redirect to 'chatmentor' with the required 'id' parameter
        return redirect('chatmentor', id=s_id)
    
    # Handle other cases if needed
    return HttpResponse("Invalid request")