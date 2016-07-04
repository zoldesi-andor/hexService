package hex.service.stateless.http;
import haxe.Http;
import hex.service.stateless.http.IHTTPRequest;
import hex.service.stateless.http.HTTPRequestMethod;

/**
 * ...
 * @author azoldesi
 */
class HTTPRequest implements IHTTPRequest
{
	private var httpRequest: Http;

	public function new(url: String, ?onData:String-> Void, ?onError:String-> Void, ?onStatus:Int-> Void)
	{
		this.httpRequest = new Http(url);
		
		#if js
			this.httpRequest.async = true; //TODO: check with flash
		#end
		
		if (onData != null) {
			this.httpRequest.onData = onData;
		}
		
		if (onError != null) {
			this.httpRequest.onError = onError;
		}
		
		if (onStatus != null) {
			this.httpRequest.onStatus = onStatus;
		}
	}
	
	
	/* INTERFACE hex.service.stateless.http.IHTTPRequest */
	
	public function request(method:HTTPRequestMethod): Void 
	{
		this.httpRequest.request(method == HTTPRequestMethod.POST);
	}
	
	public function cancel(): Void
	{
		this.httpRequest.cancel();
	}
	
	public function addHeader(key:String, value:String): IHTTPRequest 
	{
		this.httpRequest.addHeader(key, value);
		
		return this;
	}
	
	public function addParameter(name: String, value: String): IHTTPRequest
	{
		this.httpRequest.addParameter(name, value);
		
		return this;
	}
}