package com.make.manage.repository;

import java.util.List;

import com.make.manage.dto.MemberDTO;

public interface MemberRepository {
	//회원가입
	int save(MemberDTO memberDTO);
	//로그인 처리
	MemberDTO login(MemberDTO memberDTO);
	//회원목록 출력
	List<MemberDTO> findAll();
	//회원 상세페이지
	MemberDTO findById(Long id);
	//회원정보 삭제
	void delete(Long id);
	//회원정보 조회(수정페이지)
	MemberDTO findByMemberEmail(String loginEmail);
	//회원정보 수정
	boolean update(MemberDTO memberDTO);

}
