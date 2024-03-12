"""swoc URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.contrib import admin
from django.urls import path
from . import views
#from django.conf.urls import url
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('',views.index),
    path('register',views.register,name='register'),
    path('viewadminskill',views.viewadminskill,name='viewadminskill'),
    path('index1',views.index1,name='index1'),
    path('viewadmincomplaint',views.viewadmincomplaint,name='viewadmincomplaint'),
    path('Viewadminservey',views.Viewadminservey,name='Viewadminservey'),
    path('viewadminprogram',views.viewadminprogram,name='viewadminprogram'),
    path('addmentattendencee',views.addmentattendencee,name='addmentattendencee'),
    path('viewwcompl',views.viewwcompl,name='viewwcompl'),
    path('mentattendence',views.mentattendence,name='mentattendence'),
    path('addmentprg',views.addmentprg,name='addmentprg'),
    path('adduser',views.adduser,name='adduser'),
    path('servey',views.servey,name='servey'),
    path('pprogram',views.pprogram,name='pprogram'),
    path('assign',views.assign,name='assign'),
    path('addtest',views.addtest,name='addtest'),
    path('addskill',views.addskill,name='addskill'),
    path('addmentest',views.addmentest,name='addmentest'),
    path('addtestresult',views.addtestresult,name='addtestresult'),
    path('addresultss/<str:id>',views.addresultss,name='addresultss'),
    path('testcmplt/<str:id>',views.testcmplt,name='testcmplt'),
    path('mentorfeedback/<str:id>',views.mentorfeedback,name='mentorfeedback'),
    path('mentorfeedb',views.mentorfeedb,name='mentorfeedb'),
    path('mentor',views.mentor,name='mentor'),
    path('dash',views.dash,name='dash'),
    path('viewmentorstudents',views.viewmentorstudents,name='viewmentorstudents'),
    path('adddsur',views.adddsur,name='adddsur'),
    path('usercomplaint',views.usercomplaint,name='usercomplaint'),
    path('viewusertest',views.viewusertest,name='viewusertest'),
    path('viewuserprograms',views.viewuserprograms,name='viewuserprograms'),
    path('viewuserattendence',views.viewuserattendence,name='viewuserattendence'),
    path('addmenskill',views.addmenskill,name='addmenskill'),
    path('userfeedback',views.userfeedback,name='userfeedback'),
    path('viewstudservey',views.viewstudservey,name='viewstudservey'),
    path('adduserfeedback',views.adduserfeedback,name='adduserfeedback'),
    path('addusercomplaint',views.addusercomplaint,name='addusercomplaint'),
    path('logout/',views.logout,name='logout'),
    path('login/addlogin',views.addlogin,name='addlogin'),
    path('addlogin',views.addlogin,name='addlogin'),
    path('addmentor',views.addmentor,name='addmentor'),
    path('addassign',views.addassign,name='addassign'),
    path('viewstudents',views.viewstudents,name='viewstudents'),
    path('approvestud/<int:id>',views.approvestud,name='approvestud'),
    path('adddskill/<str:id>',views.adddskill,name='adddskill'),
    path('approvesur/<str:id>',views.approvesur,name='approvesur'),
    path('ccomplaint/<str:id>',views.ccomplaint,name='ccomplaint'),
    path('viewmentservey/<str:id>',views.viewmentservey,name='viewmentservey'),
    path('rejectstud/<int:id>',views.rejectstud,name='rejectstud'),
    path('login/',views.login,name='login'),
    path('admin/', admin.site.urls),
    path('viewtestresadmin',views.viewtestresadmin,name='viewtestresadmin'),

    path('chatuser',views.chatuser,name='chatuser'),
    path('addchat_std',views.addchat_std,name='addchat_std'),
    path('viewchat',views.viewchat,name='viewchat'),
    path('chatmentor/<int:id>',views.chatmentor,name='chatmentor'),
    path('chatmentor/addchat_mnt',views.addchat_mnt,name='addchat_mnt'),



]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
