-h_tp: hopen 5010

//generate random string data for variables
accountGroup: `grX`grY`grZ?6;
R: string rand(5);
NP: string rand(200000000);
P: string rand(200);
Y: string rand(365);
batchID: string rand(10000);
executionTime: string .z.p;
accountRef: string rand(10000);
uniqueId: string rand(10000);
marketName: "London";
instrumentType: "HighRate";
clientName: "Client"
modifiedDate: .z.D
billingCurrency: "USD"

system "t 1000"

//instrument:([]RA:`char$(); R:`char$(); NP:`char$(); P:`char$(); Y:`char$(); batchID:`char$(); executionTime:`char$(); accountRef:`char$(); uniqueID:`char$(); marketName:`char$(); instrumentType: `char$())
//feedDict: `time xkey flip (tickTable`time) ! enlist each (RA, R, NP, P, Y, batchID, executionTime, accountRef, uniqueId, marketName; instrumentType);


//create a dictionary
feedData: `accountRef`clientName`modifiedDate`billingCurrency`accountGroup`batchID`executionTime`accountRef`uniqueId`marketName`instrumentType!(accountRef;clientName;modifiedDate;billingCurrency;accountGroup;batchID;executionTime;accountRef;uniqueId;marketName;instrumentType)
csvFeedData: string feedData

h_tp(".u.upd";`instrument; csvFeedData)

//.z.ts:{h_tp(".u.upd";`instrument;(RA;R;NP;P;Y;batchID;executionTime;accountRef;uniqueId;marketName;instrumentType));}
//system "t 1000"