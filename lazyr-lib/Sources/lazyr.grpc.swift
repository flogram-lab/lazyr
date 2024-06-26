//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: lazyr.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `LazyrServiceClient`, then call methods of this protocol to make API calls.
public protocol LazyrServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: LazyrServiceClientInterceptorFactoryProtocol? { get }

  func dummy(
    _ request: SwiftProtobuf.Google_Protobuf_Empty,
    callOptions: CallOptions?,
    handler: @escaping (Mashup) -> Void
  ) -> ServerStreamingCall<SwiftProtobuf.Google_Protobuf_Empty, Mashup>
}

extension LazyrServiceClientProtocol {
  public var serviceName: String {
    return "LazyrService"
  }

  /// Server streaming call to Dummy
  ///
  /// - Parameters:
  ///   - request: Request to send to Dummy.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func dummy(
    _ request: SwiftProtobuf.Google_Protobuf_Empty,
    callOptions: CallOptions? = nil,
    handler: @escaping (Mashup) -> Void
  ) -> ServerStreamingCall<SwiftProtobuf.Google_Protobuf_Empty, Mashup> {
    return self.makeServerStreamingCall(
      path: LazyrServiceClientMetadata.Methods.dummy.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDummyInterceptors() ?? [],
      handler: handler
    )
  }
}

@available(*, deprecated)
extension LazyrServiceClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "LazyrServiceNIOClient")
public final class LazyrServiceClient: LazyrServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: LazyrServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: LazyrServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the LazyrService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LazyrServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct LazyrServiceNIOClient: LazyrServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: LazyrServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the LazyrService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LazyrServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol LazyrServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: LazyrServiceClientInterceptorFactoryProtocol? { get }

  func makeDummyCall(
    _ request: SwiftProtobuf.Google_Protobuf_Empty,
    callOptions: CallOptions?
  ) -> GRPCAsyncServerStreamingCall<SwiftProtobuf.Google_Protobuf_Empty, Mashup>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension LazyrServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return LazyrServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: LazyrServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeDummyCall(
    _ request: SwiftProtobuf.Google_Protobuf_Empty,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncServerStreamingCall<SwiftProtobuf.Google_Protobuf_Empty, Mashup> {
    return self.makeAsyncServerStreamingCall(
      path: LazyrServiceClientMetadata.Methods.dummy.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDummyInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension LazyrServiceAsyncClientProtocol {
  public func dummy(
    _ request: SwiftProtobuf.Google_Protobuf_Empty,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncResponseStream<Mashup> {
    return self.performAsyncServerStreamingCall(
      path: LazyrServiceClientMetadata.Methods.dummy.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDummyInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct LazyrServiceAsyncClient: LazyrServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: LazyrServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: LazyrServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol LazyrServiceClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'dummy'.
  func makeDummyInterceptors() -> [ClientInterceptor<SwiftProtobuf.Google_Protobuf_Empty, Mashup>]
}

public enum LazyrServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LazyrService",
    fullName: "LazyrService",
    methods: [
      LazyrServiceClientMetadata.Methods.dummy,
    ]
  )

  public enum Methods {
    public static let dummy = GRPCMethodDescriptor(
      name: "Dummy",
      path: "/LazyrService/Dummy",
      type: GRPCCallType.serverStreaming
    )
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol LazyrServiceProvider: CallHandlerProvider {
  var interceptors: LazyrServiceServerInterceptorFactoryProtocol? { get }

  func dummy(request: SwiftProtobuf.Google_Protobuf_Empty, context: StreamingResponseCallContext<Mashup>) -> EventLoopFuture<GRPCStatus>
}

extension LazyrServiceProvider {
  public var serviceName: Substring {
    return LazyrServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Dummy":
      return ServerStreamingServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<SwiftProtobuf.Google_Protobuf_Empty>(),
        responseSerializer: ProtobufSerializer<Mashup>(),
        interceptors: self.interceptors?.makeDummyInterceptors() ?? [],
        userFunction: self.dummy(request:context:)
      )

    default:
      return nil
    }
  }
}

/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol LazyrServiceAsyncProvider: CallHandlerProvider, Sendable {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: LazyrServiceServerInterceptorFactoryProtocol? { get }

  func dummy(
    request: SwiftProtobuf.Google_Protobuf_Empty,
    responseStream: GRPCAsyncResponseStreamWriter<Mashup>,
    context: GRPCAsyncServerCallContext
  ) async throws
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension LazyrServiceAsyncProvider {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return LazyrServiceServerMetadata.serviceDescriptor
  }

  public var serviceName: Substring {
    return LazyrServiceServerMetadata.serviceDescriptor.fullName[...]
  }

  public var interceptors: LazyrServiceServerInterceptorFactoryProtocol? {
    return nil
  }

  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Dummy":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<SwiftProtobuf.Google_Protobuf_Empty>(),
        responseSerializer: ProtobufSerializer<Mashup>(),
        interceptors: self.interceptors?.makeDummyInterceptors() ?? [],
        wrapping: { try await self.dummy(request: $0, responseStream: $1, context: $2) }
      )

    default:
      return nil
    }
  }
}

public protocol LazyrServiceServerInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when handling 'dummy'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDummyInterceptors() -> [ServerInterceptor<SwiftProtobuf.Google_Protobuf_Empty, Mashup>]
}

public enum LazyrServiceServerMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LazyrService",
    fullName: "LazyrService",
    methods: [
      LazyrServiceServerMetadata.Methods.dummy,
    ]
  )

  public enum Methods {
    public static let dummy = GRPCMethodDescriptor(
      name: "Dummy",
      path: "/LazyrService/Dummy",
      type: GRPCCallType.serverStreaming
    )
  }
}
