package hex.service.stateless.http;

/**
 * ...
 * @author azoldesi
 */
class HTTPRequestFactory implements IHTTPRequestFactory
{

	public function new() 
	{
		
	}
	
	
	/* INTERFACE hex.service.stateless.http.IHTTPRequestFactory */
	
	public function createRequest(url:String, ?onData:String-> Void, ?onError:String-> Void, ?onStatus:Int-> Void): IHTTPRequest 
	{
		return new HTTPRequest(url, onData, onError, onStatus);
	}
}