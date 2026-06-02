#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
signed char v5 (signed short);
signed char (*v6) (signed short) = v5;
extern void v7 (unsigned char, unsigned int, signed short);
extern void (*v8) (unsigned char, unsigned int, signed short);
extern unsigned int v9 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v10) (signed char, unsigned short, unsigned int, signed short);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
unsigned short v23 (signed int, unsigned int, signed char);
unsigned short (*v24) (signed int, unsigned int, signed char) = v23;
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern void v27 (void);
extern void (*v28) (void);
signed short v29 (unsigned short, signed char, unsigned char);
signed short (*v30) (unsigned short, signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 2U;
signed short v70 = -1;
signed short v69 = -2;

signed short v29 (unsigned short v72, signed char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 6;
signed int v76 = 1;
signed char v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed int v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -4;
signed char v80 = -4;
unsigned char v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed int v82, unsigned int v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = -1;
signed short v86 = 3;
unsigned int v85 = 0U;
trace++;
switch (trace)
{
case 2: 
return 6;
case 4: 
return 5;
case 6: 
{
v27 ();
}
break;
case 8: 
return 7;
case 10: 
{
v27 ();
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (signed short v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 3;
unsigned short v90 = 2;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
