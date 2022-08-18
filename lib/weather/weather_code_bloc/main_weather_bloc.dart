/*
  Key Concept:
  - Observer state changes with BlocObserver : lắng nghe thay đổi state với BlocObserver
  - BlocProvider, Flutter widget that provider a bloc to its children : cung cấp 1 bloc cho các lớp con
  - BlocBuilder, Flutter widget that handles building the widget in response to new states : xử lý building trả về từ trạng thái mới
  - Prevent unnecessary rebuilds with Equatable : ngăn chặn rebuild với Equatable
  - RepositoryProvider, a Flutter widget that provides a repository to its children : 1 flutter widget nó cung cấp 1 repository cho các lớp con của nó
  - MultiBlocProvider, a Flutter widget that merges multiple BlocProvider widgets into one : ghép nhiều BlocProvider vào thành 1
  - BlocConsumer, a Flutter widget that exposes a builder and listener in order to react to new states : thể hiện ui và lắng nghe khi có trạng thái mới
  - HydratedBloc to manage and persist state : quản lý là duy trì trạng thái

************************
    In this tutorial, we're going to build a Weather app in Flutter which demonstrates how to manage multiple cubits to implement dynamic theming,
    pull-to-refresh, and much more.
    Our weather app will pull live weather data from the public MetaWeather API and demonstrate how to separate our application into layers
    (data, repository, business logic, and presentation).
  - trong tutorial này chúng ta tiến hành build 1 ứng dụng thời tiết với flutter trình diễn khả năng sử dụng nhiều cubit , kéo để làm mới
  - ứng dụng của chúng ta sẽ trực tiếp data thời tiết qua metaWeather api và thể hiện
 */

