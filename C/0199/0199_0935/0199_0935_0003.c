#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
unsigned char v7 (unsigned short, unsigned int, signed int);
unsigned char (*v8) (unsigned short, unsigned int, signed int) = v7;
void v9 (signed int, signed char, signed int, unsigned int);
void (*v10) (signed int, signed char, signed int, unsigned int) = v9;
extern signed int v11 (signed char, unsigned int, unsigned short);
extern signed int (*v12) (signed char, unsigned int, unsigned short);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed short v15 (signed short, unsigned int, signed short);
extern signed short (*v16) (signed short, unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (signed int, signed char, unsigned short, signed int);
extern signed short (*v24) (signed int, signed char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
unsigned int v29 (signed int, unsigned int, signed int);
unsigned int (*v30) (signed int, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 1;
unsigned int v61 = 3U;
signed short v60 = -2;

unsigned int v29 (signed int v63, unsigned int v64, signed int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 1;
signed int v67 = -2;
signed char v66 = 3;
trace++;
switch (trace)
{
case 11: 
return v64;
default: abort ();
}
}
}
}

void v9 (signed int v69, signed char v70, signed int v71, unsigned int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 6;
unsigned int v74 = 7U;
signed char v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v76, unsigned int v77, signed int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 2;
signed int v80 = -2;
signed short v79 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
