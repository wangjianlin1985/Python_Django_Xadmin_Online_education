from django.urls import path, re_path

# 要写上app的名字
from course.views import CourseListView, CourseDetailView, CourseInfoView, CommentsView, AddCommentsView, VideoPlayView

app_name = "course"

urlpatterns = [
    path('list/', CourseListView.as_view(), name='course_list'),
    re_path('course/(?P<course_id>\d+)/', CourseDetailView.as_view(), name='course_detail'),
    re_path('info(?P<course_id>\d+)/', CourseInfoView.as_view(), name='course_info'),
    re_path('comment/(?P<course_id>\d+)', CommentsView.as_view(), name='course_comments'),
    path('add_comment/', AddCommentsView.as_view(), name='add_comment'),
    re_path('video/(?P<video_id>\d+)/', VideoPlayView.as_view(), name='video_play')
]
