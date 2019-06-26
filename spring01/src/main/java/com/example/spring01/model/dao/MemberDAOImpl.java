package com.example.spring01.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring01.model.dto.MemberDTO;

//현재 클래스를 스프링에서 관리하는 dao bean으로 설정
@Repository
public class MemberDAOImpl implements MemberDAO {	
	@Inject
	SqlSession sqlSession; //root-context.xml의 bean id와 같아야 함
	
	@Override
	public List<MemberDTO> memberList() {		
		return sqlSession.selectList("member.memberList");
		//스프링에서는 객체가 auto-close되기 때문에 일일이 처리할 필요가 없음
	}

	@Override
	public void insertMember(MemberDTO dto) {
		sqlSession.insert("insertMember", dto);
	}

	@Override
	public MemberDTO viewMember(String userid) {
		return sqlSession.selectOne("viewMember", userid);
	}

	@Override
	public void deleteMember(String userid) {
		sqlSession.delete("deleteMember", userid);
	}

	@Override
	public void updateMember(MemberDTO dto) {
		sqlSession.update("updateMember", dto);
	}

	@Override
	public boolean checkPW(String userid, String passwd) {
		boolean result=false;
		//mapper에 2개 이상의 자료 전달 시: map,dto 등을 사용해 묶어야 함
		Map<String,String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		int count = sqlSession.selectOne("checkPW", map);
		//비밀번호가 맞으면 1, 틀리면 0 리턴
		if(count==1) result=true;		
		return result;
	}
}
