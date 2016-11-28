package dao.interfaces;

import java.util.List;

import model.Item;

/**
 * Created by bruno on 11/18/16.
 */
public interface ItemDaoInterface {
	public List<Item> listByUsage(boolean isUsed, int quantity);
}
