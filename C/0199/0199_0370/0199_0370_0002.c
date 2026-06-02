#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char);
extern signed char (*v2) (signed int, unsigned int, signed char);
extern void v3 (signed char, signed short, unsigned int, unsigned short);
extern void (*v4) (signed char, signed short, unsigned int, unsigned short);
extern signed short v5 (signed char, signed char, unsigned int, signed int);
extern signed short (*v6) (signed char, signed char, unsigned int, signed int);
extern signed short v7 (signed char, signed char, signed int, signed int);
extern signed short (*v8) (signed char, signed char, signed int, signed int);
extern signed char v9 (unsigned short, signed short, unsigned int, unsigned int);
extern signed char (*v10) (unsigned short, signed short, unsigned int, unsigned int);
extern void v13 (signed int, signed int, signed short);
extern void (*v14) (signed int, signed int, signed short);
unsigned int v15 (unsigned int, unsigned int, unsigned char, unsigned int);
unsigned int (*v16) (unsigned int, unsigned int, unsigned char, unsigned int) = v15;
extern unsigned int v17 (unsigned char, unsigned int);
extern unsigned int (*v18) (unsigned char, unsigned int);
extern signed char v19 (signed char, unsigned int, signed char, signed char);
extern signed char (*v20) (signed char, unsigned int, signed char, signed char);
extern void v21 (unsigned short, signed short, signed short);
extern void (*v22) (unsigned short, signed short, signed short);
extern signed short v23 (unsigned char, signed char, signed char);
extern signed short (*v24) (unsigned char, signed char, signed char);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
signed char v27 (signed char, unsigned short, signed int);
signed char (*v28) (signed char, unsigned short, signed int) = v27;
extern signed short v29 (signed short, unsigned short, unsigned char);
extern signed short (*v30) (signed short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -2;
unsigned short v67 = 3;
unsigned char v66 = 7;

signed char v27 (signed char v69, unsigned short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 3U;
signed short v73 = 1;
unsigned char v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v75, unsigned int v76, unsigned char v77, unsigned int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 2;
unsigned short v80 = 6;
signed short v79 = -1;
trace++;
switch (trace)
{
case 4: 
return v78;
case 6: 
return v78;
default: abort ();
}
}
}
}
