#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, unsigned short, signed int);
extern signed short (*v2) (signed int, unsigned int, unsigned short, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
unsigned char v7 (signed char, unsigned short, signed short);
unsigned char (*v8) (signed char, unsigned short, signed short) = v7;
extern unsigned int v9 (signed short, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v10) (signed short, unsigned char, unsigned int, unsigned short);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
signed short v13 (signed int, signed int, unsigned int, signed char);
signed short (*v14) (signed int, signed int, unsigned int, signed char) = v13;
extern unsigned char v15 (signed char, unsigned short);
extern unsigned char (*v16) (signed char, unsigned short);
signed char v17 (signed int, unsigned char, signed short, unsigned char);
signed char (*v18) (signed int, unsigned char, signed short, unsigned char) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, unsigned short);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = 3;
signed int v54 = 0;
unsigned int v53 = 4U;

signed char v17 (signed int v56, unsigned char v57, signed short v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 4;
signed int v61 = -2;
unsigned int v60 = 6U;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v63;
v63 = v19 ();
history[history_index++] = (int)v63;
}
break;
case 4: 
{
unsigned char v64;
v64 = v19 ();
history[history_index++] = (int)v64;
}
break;
case 6: 
{
signed char v65;
v65 = v29 ();
history[history_index++] = (int)v65;
}
break;
case 11: 
return -1;
case 14: 
return 1;
default: abort ();
}
}
}
}

signed short v13 (signed int v66, signed int v67, unsigned int v68, signed char v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 1U;
unsigned int v71 = 6U;
unsigned short v70 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned int v75 = 3U;
signed char v74 = 1;
unsigned char v73 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v76, unsigned short v77, signed short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 1U;
unsigned short v80 = 4;
signed int v79 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
