package dao.interfaces;

import java.io.Serializable;
import java.util.List;

import model.Auction;

/**
 * Created by bruno on 11/18/16.
 */
public interface AuctionDaoInterface<I extends Serializable> {
	public Auction save(Auction auction);
	public void remove(I id);
	public Auction findById(I id);
	public List<Auction> getRecent();
}