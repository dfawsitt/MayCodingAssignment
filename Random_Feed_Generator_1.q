h_tp: hopen 5010

//generate random string data for variables
RA: string rand(5);
R: string rand(5);
NP: string rand(200000000);
P: string rand(200);
Y: string rand(365);
batchID: string rand(10000);
executionTime: string .z.p;
accountRef: string rand(10000);
uniqueId: string rand(10000);
marketName: "Frankfurt";
instrumentType: "Legacy";

system "t 1000"

//instrument:([]RA:`char$(); R:`char$(); NP:`char$(); P:`char$(); Y:`char$(); batchID:`char$(); executionTime:`char$(); accountRef:`char$(); uniqueID:`char$(); marketName:`char$(); instrumentType: `char$())
//feedDict: `time xkey flip (tickTable`time) ! enlist each (RA, R, NP, P, Y, batchID, executionTime, accountRef, uniqueId, marketName; instrumentType);


//create a dictionary
feedData: `RA`R`NP`P`Y`batchID`executionTime`accountRef`uniqueId`marketName`instrumentType!(RA;R;NP;P;Y;batchID;executionTime;accountRef;uniqueId;marketName;instrumentType)

//.z.ts:{h_tp(".u.upd";`instrument;(RA;R;NP;P;Y;batchID;executionTime;accountRef;uniqueId;marketName;instrumentType));}
//system "t 1000"

.z.ts:{h_tp(".u.upd";`instrument;feedData);}
system "t 1000"


