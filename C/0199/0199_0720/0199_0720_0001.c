#include <stdlib.h>
extern void v1 (signed short, signed char, signed int);
extern void (*v2) (signed short, signed char, signed int);
extern unsigned short v3 (signed int, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short);
extern signed int v5 (signed char, unsigned char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, unsigned char, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern void v11 (unsigned int, unsigned int, signed int, unsigned char);
extern void (*v12) (unsigned int, unsigned int, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
unsigned int v17 (signed char, signed short);
unsigned int (*v18) (signed char, signed short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
signed int v21 (signed char, unsigned char, signed int);
signed int (*v22) (signed char, unsigned char, signed int) = v21;
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned int v25 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed char, signed short, unsigned int);
extern void v27 (unsigned short, signed char, unsigned char, signed short);
extern void (*v28) (unsigned short, signed char, unsigned char, signed short);
extern signed int v29 (unsigned int, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = 2;
signed char v60 = -1;
signed int v59 = -2;

signed int v21 (signed char v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -1;
unsigned int v66 = 4U;
unsigned int v65 = 0U;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
{
unsigned int v68;
unsigned char v69;
signed int v70;
v68 = v65 + v66;
v69 = v63 + 2;
v70 = v29 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
{
unsigned int v71;
unsigned char v72;
signed int v73;
v71 = 1U + v66;
v72 = v63 - 5;
v73 = v29 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 8: 
return v64;
case 10: 
{
unsigned int v74;
unsigned char v75;
signed int v76;
v74 = 6U + 4U;
v75 = v63 + v63;
v76 = v29 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v77, signed short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 1;
unsigned char v80 = 4;
unsigned char v79 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -2;
signed short v84 = 3;
signed short v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
