package com.ivan4usa.roulette;

/**
 *  This is a Player bean
 *
 *@author    Ivan Pol
 */
public class Player extends Object {

    private String name;
    private String image;
    private int place;

	/**
	* Default empty Player constructor
	*/
	public Player() {
		super();
	}

	/**
	* Default Player constructor
	*/
	public Player(String name, String image, int place) {
		super();
		this.name = name;
		this.image = image;
		this.place = place;
	}

	/**
	* Returns value of name
	* @return The name value
	*/
	public String getName() {
		return name;
	}

	/**
	* Sets new value of name
	* @param name  The new name value
	*/
	public void setName(String name) {
		this.name = name;
	}

	/**
	* Returns value of image
	* @return  The image value
	*/
	public String getImage() {
		return image;
	}

	/**
	* Sets new value of image
	* @param image The new image value
	*/
	public void setImage(String image) {
		this.image = image;
	}

	/**
	* Returns value of place
	* @return first The place value
	*/
	public int getPlace() {
		return place;
	}

	/**
	* Sets new value of place
	* @param place The new place value
	*/
	public void setPlace(int place) {
		this.place = place;
	}
}
