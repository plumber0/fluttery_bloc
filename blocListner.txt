/// The builder function can be called multiple times,
/// as I have previously stated before
///
///
/// BlocBuilder:
///   builder function may be called multiple times per state
///   (due to flutter engine)
///
/// BlocListner:
///   this listener function is called only once per state
///   (not including the initial state)
///
/// optional listenWhen function for BlocListner
/// as the optional buildWhen function was for BlocBuilder
