
/**
 * Home APIs for whitelisted partner apps to manage watches.
 */
interface PartnerApi {

  /**
   * Returns all watch faces in {@link WatchFaceInfo}.
   *
   * <p>An empty list would return if there is no available watch faces.
   */
  List<WatchFaceInfo> getAllWatchFaces() = 0;


  /**
   * Sets current watch face.
   *
   * @param watchFaceComponent the {@link ComponentName} of the watch face
   *     to be set
   * @param callback a {@link SetWatchFaceCallback.Stub} the caller implements and provides for Home
   *     to report back the status of the API execution; {@code null} can be used if the callback is
   *     not needed
   * @return see {@link SetWatchFaceStatus}
   */
  int setWatchFace(in ComponentName watchFaceComponent, in SetWatchFaceCallback callback) = 1;
}
