#include <lecture_pkg/DoDishesAction.h>
#include <actionlib/server/simple_action_server.h>

typedef actionlib::SimpleActionServer<lecture_pkg::DoDishesAction> Server;

void execute(const lecture_pkg::DoDishesGoalConstPtr& goal, Server* as)
{
  lecture_pkg::DoDishesFeedback feedback_;
  lecture_pkg::DoDishesResult result_;
  for (int i = 0; i <= 10; i++)
  {
    feedback_.percent_complete = 10 * i;
    as->publishFeedback(feedback_);
  }
  as->setSucceeded();
}

int main (int argc, char** argv)
{
  ros::init(argc, argv, "do_dishes_server");
  ros::NodeHandle n;
  Server server(n, "do_dishes", boost::bind(&execute, _1, &server), false);
  server.start();
  ros::spin();
  return 0;
}
