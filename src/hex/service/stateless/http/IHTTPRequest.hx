package hex.service.stateless.http;

/**
 * Interface for a Http Request
 * @author azoldesi
 */
interface IHTTPRequest 
{
	/**
	 * Sends the request
	 * @param	method
	 */
	public function request(method: HTTPRequestMethod): Void;
	
	/**
	 * Cancels the request
	 */
	public function cancel(): Void;
	
	/**
	 * Adds a header to the request
	 * @param	key
	 * @param	value
	 * @return
	 */
	public function addHeader(key: String, value: String): IHTTPRequest;
	
	/**
	 * Adds a request parameter to the request
	 * @param	param Tha paramter name
	 * @param	value The parameter value
	 * @return The request (to allow chaining)
	 */
	public function addParameter( param : String, value : String ): IHTTPRequest;
}