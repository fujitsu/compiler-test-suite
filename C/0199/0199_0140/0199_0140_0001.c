#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, signed int);
extern unsigned char (*v2) (unsigned int, unsigned char, signed int);
unsigned short v3 (signed short, unsigned char);
unsigned short (*v4) (signed short, unsigned char) = v3;
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed int, unsigned int);
extern signed char (*v8) (signed int, unsigned int);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
unsigned int v13 (unsigned char, unsigned short, unsigned short);
unsigned int (*v14) (unsigned char, unsigned short, unsigned short) = v13;
extern signed int v15 (unsigned char, signed char);
extern signed int (*v16) (unsigned char, signed char);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
extern signed short v19 (signed short, unsigned short, unsigned int);
extern signed short (*v20) (signed short, unsigned short, unsigned int);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern unsigned int v23 (signed char, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed char);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned int);
unsigned short v27 (unsigned int);
unsigned short (*v28) (unsigned int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 2;
unsigned short v58 = 1;
unsigned int v57 = 7U;

unsigned short v27 (unsigned int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 3;
signed int v62 = -3;
unsigned char v61 = 4;
trace++;
switch (trace)
{
case 4: 
{
v29 ();
}
break;
case 6: 
{
signed int v64;
unsigned int v65;
signed char v66;
v64 = -4 + 0;
v65 = 2U + 3U;
v66 = v7 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 9: 
{
v29 ();
}
break;
case 11: 
return 6;
case 14: 
return v63;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v67, unsigned short v68, unsigned short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 4U;
unsigned short v71 = 6;
signed int v70 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
signed char v75 = 2;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v77, unsigned char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -4;
unsigned int v80 = 0U;
signed short v79 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
