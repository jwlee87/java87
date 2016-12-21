package bitcamp.java87.project01.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import bitcamp.java87.project01.dao.StyleDao;
import bitcamp.java87.project01.domain.Style;
import bitcamp.java87.project01.domain.Search;


@Repository("StyleDaoImpl")
public class StyleDaoImpl implements StyleDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public StyleDaoImpl() {
		System.out.println(this.getClass());
	}

//	///Method

	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("StyleMapper.getTotalCount", search);
	}

	@Override
	public void addStyle(Style style) throws Exception {
	  // TODO Auto-generated method stub
	  System.out.println("/style/addStyle : StyleDaoImpl "+style);
	  sqlSession.insert("StyleMapper.addStyle", style);
	}

  @Override
  public List<Style> getStyleList(Search search) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectList("StyleMapper.getStyleList", search);
  }


  @Override
  public Style getStyle(int styleNo) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectOne("StyleMapper.getStyle", styleNo);
  }

  @Override
  public void updateStyle(Style style) throws Exception {
    // TODO Auto-generated method stub
    sqlSession.update("StyleMapper.updateStyle", style);
  }

}