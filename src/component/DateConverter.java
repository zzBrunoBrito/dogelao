package component;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import br.com.caelum.vraptor.Convert;
import br.com.caelum.vraptor.converter.Converter;

@Convert(Calendar.class)
public class DateConverter implements Converter<Calendar>{

	@Override
	public Calendar convert(String htmlText, Class<? extends Calendar> arg1) {
		SimpleDateFormat dt = new SimpleDateFormat("DD/MM/YYYY");
		Calendar date = Calendar.getInstance();
		try {
			date.setTime(dt.parse(htmlText));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

}
