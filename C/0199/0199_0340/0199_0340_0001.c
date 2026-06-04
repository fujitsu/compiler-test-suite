#include <stdlib.h>
extern signed int v1 (unsigned char, signed int, signed short, unsigned short);
extern signed int (*v2) (unsigned char, signed int, signed short, unsigned short);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed int v5 (unsigned char, unsigned short, unsigned int);
extern signed int (*v6) (unsigned char, unsigned short, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned char v11 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v12) (signed short, unsigned short, unsigned short, signed int);
unsigned int v13 (signed char, unsigned short, signed short, unsigned int);
unsigned int (*v14) (signed char, unsigned short, signed short, unsigned int) = v13;
extern signed short v15 (signed char, unsigned int, signed short);
extern signed short (*v16) (signed char, unsigned int, signed short);
extern signed char v17 (unsigned short, signed short);
extern signed char (*v18) (unsigned short, signed short);
unsigned char v19 (unsigned short);
unsigned char (*v20) (unsigned short) = v19;
extern void v23 (signed char, unsigned short, signed short);
extern void (*v24) (signed char, unsigned short, signed short);
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern void v27 (unsigned char, unsigned short, unsigned int, unsigned int);
extern void (*v28) (unsigned char, unsigned short, unsigned int, unsigned int);
void v29 (signed int, signed char, unsigned short);
void (*v30) (signed int, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 3;
signed char v64 = -1;
signed short v63 = 0;

void v29 (signed int v66, signed char v67, unsigned short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -3;
signed char v70 = -3;
signed int v69 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 3U;
signed short v74 = -1;
signed short v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v76, unsigned short v77, signed short v78, unsigned int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 0;
unsigned char v81 = 4;
unsigned short v80 = 1;
trace++;
switch (trace)
{
case 9: 
return 5U;
case 11: 
return 0U;
default: abort ();
}
}
}
}
