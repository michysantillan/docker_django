from django.http import HttpResponse


def index(request):
    return HttpResponse("Hola mundo desde un django dockerizado con postgres nginx y gunicorn,sincronizado con git")