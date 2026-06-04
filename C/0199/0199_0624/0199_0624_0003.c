#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern signed short v11 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v12) (unsigned int, signed int, unsigned short, signed int);
extern signed int v13 (signed int, signed short, unsigned int);
extern signed int (*v14) (signed int, signed short, unsigned int);
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed char v21 (unsigned short, signed short);
signed char (*v22) (unsigned short, signed short) = v21;
void v23 (signed char, unsigned char, signed char, signed int);
void (*v24) (signed char, unsigned char, signed char, signed int) = v23;
extern signed char v25 (unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned int, signed char, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v104 = 6U;
signed int v103 = -3;
signed short v102 = -3;

void v23 (signed char v105, unsigned char v106, signed char v107, signed int v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 1;
signed char v110 = -2;
signed short v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed short v116 = 0;
signed char v115 = 1;
signed char v114 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
