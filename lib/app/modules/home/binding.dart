import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:tasktodo/app/data/providers/task/provider.dart';
import 'package:tasktodo/app/data/services/storage/respository.dart';
import 'package:tasktodo/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
          taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        )));
  }
}
