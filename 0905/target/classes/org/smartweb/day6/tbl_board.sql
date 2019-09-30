create table tbl_board(
bno int not null auto_increment,
title varchar(200) not null,
content text null,
writer varchar(50) not null,
regdate timestamp default now(),
updatedate timestamp default now(),
primary key(bno)
);

//mysql cmd ¿¡¼­ ¸ÔÈû
set@rewnum:=0;
select @rownum:=@rownum+1, bno, title from tbl_board;
//





desc tbl_board;

select * from tbl_board;



create table tbl_reply(
	rno int not null auto_increment,
	bno int not null default 0,
	replytext varchar(1000) not null,
	replyer varchar(50) not null,
	regdate timestamp not null default now(),
	updatedate timestamp not null default now(),
	primary key(rno) 
);

drop table tbl_reply;

alter table tbl_reply add constraint fk_board foreign key(bno) 
references tbl_board(bno);


select * from tbl_reply;







