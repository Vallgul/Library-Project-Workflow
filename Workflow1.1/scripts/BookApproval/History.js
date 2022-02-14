if (!$.context.History) {
    // initialize context
   $.context.Requester.RequestDate = new Date().toISOString().slice(0, 10);
   $.context.History = [];
   var decision = {
       "User": $.info.startedBy,
       "Role": "Requester",
       "Decision": "Initial Request",
       "Comment": $.context.Requester.Comment
   };
   $.context.History.push(decision);
   $.context.role = "Department Manager"
}
else if ($.context.role == "Department Manager")
{
    var task4 = $.usertasks.usertask4.last;
    prepare_decision(task4);

    $.context.role = "Purchasing Manager"
}
else if ($.context.role == "Purchasing Manager")
{
    var task5 = $.usertasks.usertask5.last;
    prepare_decision(task5);

    $.context.role = "Financial Audit Manager"
}
else if ($.context.role == "Financial Audit Manager")
{
    var task6 = $.usertasks.usertask6.last;
    prepare_decision(task6);
}

function prepare_decision (task)
{
    var decision = {
        "User": task.processor,
        "Role": $.context.role,
        "Decision": task.decision,
        "Comment": $.context.comment
    };

    $.context.History.push(decision);
    $.context.comment = "";
}