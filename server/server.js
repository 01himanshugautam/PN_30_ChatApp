const express = require("express");
const http = require("http");
const { Server } = require("socket.io");
const cors = require("cors");

const app = express();
app.use(cors());

const server = http.createServer(app);

const io = new Server(server, {
    cors: {
        origin: "http://localhost:3000",
        methods: ["GET", "POST"],
    },
});

io.on("connection", (socket) => {
    console.log(`User Connected: ${socket.id}`);

    socket.on("join_room", (data) => {
        socket.join(data);
    });

    socket.on("send_message", (data) => {
        socket.to(data.room).emit("receive_message", data);
    });
});

server.listen(3001, () => {
    console.log("SERVER IS RUNNING");
});

// const io = require('socket.io')(8000);
// const users = {};

// io.on('connection', socket => {
//     socket.on('new-user-joined', name => {
//         console.log(name);
//         users[socket.id] = name;
//         socket.broadcast.emit('user-joined', name);
//     });

//     socket.on('send', message => {
//         socket.broadcast.emit('receive', {
//             message: message, name: users[socket.id],})
//     });

//     socket.on('disconnect', name => {
//         socket.broadcast.emit('user-left', users[socket.idƒ]);
//         delete users[socket.id];
//     });
// });