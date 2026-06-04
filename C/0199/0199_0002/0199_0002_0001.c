#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (unsigned char, signed char, signed char);
extern signed short (*v6) (unsigned char, signed char, signed char);
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
extern void v9 (signed short, signed int, unsigned short);
extern void (*v10) (signed short, signed int, unsigned short);
extern unsigned char v11 (unsigned short, unsigned char, signed char);
extern unsigned char (*v12) (unsigned short, unsigned char, signed char);
unsigned short v13 (unsigned int, signed short, unsigned short);
unsigned short (*v14) (unsigned int, signed short, unsigned short) = v13;
extern unsigned char v15 (signed int, signed int, signed short, unsigned int);
extern unsigned char (*v16) (signed int, signed int, signed short, unsigned int);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned char v23 (unsigned int, unsigned char);
unsigned char (*v24) (unsigned int, unsigned char) = v23;
extern void v25 (signed char, unsigned int, signed char, signed char);
extern void (*v26) (signed char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed char v29 (unsigned char, unsigned short, unsigned short);
signed char (*v30) (unsigned char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 5;
signed short v63 = -4;
unsigned int v62 = 3U;

signed char v29 (unsigned char v65, unsigned short v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 1;
unsigned short v69 = 6;
unsigned short v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v71, unsigned char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 3;
unsigned int v74 = 1U;
signed short v73 = -2;
trace++;
switch (trace)
{
case 7: 
return 2;
case 9: 
return v72;
case 11: 
return v72;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v76, signed short v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -2;
signed char v80 = -1;
unsigned char v79 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
