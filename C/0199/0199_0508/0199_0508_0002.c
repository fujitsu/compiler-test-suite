#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed short, signed char, unsigned int);
extern signed char (*v6) (signed short, signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short v9 (signed short, signed int);
extern unsigned short (*v10) (signed short, signed int);
void v11 (unsigned short);
void (*v12) (unsigned short) = v11;
extern unsigned short v13 (signed short, unsigned short, signed int, unsigned int);
extern unsigned short (*v14) (signed short, unsigned short, signed int, unsigned int);
unsigned short v15 (unsigned int, signed short);
unsigned short (*v16) (unsigned int, signed short) = v15;
signed int v17 (signed char);
signed int (*v18) (signed char) = v17;
extern signed int v19 (signed short, signed char, unsigned int);
extern signed int (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (signed char, signed char, signed int, unsigned int);
extern signed int (*v22) (signed char, signed char, signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed char v25 (signed short);
signed char (*v26) (signed short) = v25;
extern signed int v27 (unsigned int, unsigned short, unsigned int);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v67 = 4;
unsigned char v66 = 7;
signed char v65 = 2;

signed char v25 (signed short v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = 1;
signed short v70 = 0;
signed short v69 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 0;
unsigned short v74 = 4;
unsigned int v73 = 6U;
trace++;
switch (trace)
{
case 3: 
{
signed short v76;
signed char v77;
unsigned int v78;
signed int v79;
v76 = -4 - -1;
v77 = v75 + v72;
v78 = v73 - 3U;
v79 = v19 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 5: 
{
signed short v80;
signed char v81;
unsigned int v82;
signed int v83;
v80 = 2 + -2;
v81 = v75 + -3;
v82 = v73 - 7U;
v83 = v19 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 7: 
{
signed short v84;
signed char v85;
unsigned int v86;
signed int v87;
v84 = -3 + 2;
v85 = v75 + 1;
v86 = 2U + v73;
v87 = v19 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 9: 
{
signed short v88;
signed char v89;
unsigned int v90;
signed int v91;
v88 = 0 - -3;
v89 = 1 - v72;
v90 = v73 - 4U;
v91 = v19 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v92, signed short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -3;
signed int v95 = -3;
signed int v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 7;
unsigned char v99 = 2;
unsigned short v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
