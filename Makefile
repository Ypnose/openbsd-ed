ED_BIN  = ed
ED_SRCS = buf.c glbl.c io.c main.c re.c sub.c undo.c
ED_OBJS = $(ED_SRCS:.c=.o)
ED_COMP = compat/reallocarray.o compat/pledge.o

CPPFLAGS += -include compat/compat.h

all: $(ED_BIN)

$(ED_BIN): $(ED_COMP) $(ED_OBJS)
	$(CC) $(CFLAGS) -o $(ED_BIN) $(ED_COMP) $(ED_OBJS) $(LDFLAGS)

clean:
	rm -f *.o compat/*.o $(ED_BIN)
