package object;

public class Cabin {

	private int 		id;
	private String 		address;
	private String 		city;
	private String 		state;
	private String 		description;
	private int			bedroomCount;
	private float		bathCount;
	private int			maxOccupancy;
	private User		user;
	private Amenities	amenities;
	
	public Cabin() 
	{
		id = -1;
		address = null;
		city = null;
		state = null;
		description = null;
		bedroomCount = -1;
		bathCount = -1;
		maxOccupancy = -1;
		user = null;
		amenities = null;
	}

	public Cabin(int id, String address, String city, String state, String description, int bedroomCount,
			float bathCount, int maxOccupancy, User user, Amenities amenities) 
	{
		this.id = id;
		this.address = address;
		this.city = city;
		this.state = state;
		this.description = description;
		this.bedroomCount = bedroomCount;
		this.bathCount = bathCount;
		this.maxOccupancy = maxOccupancy;
		this.user = user;
		this.amenities = amenities;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the bedroomCount
	 */
	public int getBedroomCount() {
		return bedroomCount;
	}

	/**
	 * @param bedroomCount the bedroomCount to set
	 */
	public void setBedroomCount(int bedroomCount) {
		this.bedroomCount = bedroomCount;
	}

	/**
	 * @return the bathCount
	 */
	public float getBathCount() {
		return bathCount;
	}

	/**
	 * @param bathCount the bathCount to set
	 */
	public void setBathCount(float bathCount) {
		this.bathCount = bathCount;
	}

	/**
	 * @return the maxOccupancy
	 */
	public int getMaxOccupancy() {
		return maxOccupancy;
	}

	/**
	 * @param maxOccupancy the maxOccupancy to set
	 */
	public void setMaxOccupancy(int maxOccupancy) {
		this.maxOccupancy = maxOccupancy;
	}

	/**
	 * @return the userId
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUser( User user) {
		this.user = user;
	}

	/**
	 * @return the amenitiesId
	 */
	public Amenities getAmenities() {
		return amenities;
	}

	/**
	 * @param amenitiesId the amenitiesId to set
	 */
	public void setAmenities( Amenities amenities ) {
		this.amenities = amenities;
	}
	
	
}