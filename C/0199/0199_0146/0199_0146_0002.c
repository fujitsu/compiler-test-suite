#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed char (*v2) (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
signed int v7 (signed char, unsigned char, unsigned char, signed char);
signed int (*v8) (signed char, unsigned char, unsigned char, signed char) = v7;
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
unsigned short v11 (signed int, unsigned short);
unsigned short (*v12) (signed int, unsigned short) = v11;
extern unsigned int v13 (unsigned int, unsigned int);
extern unsigned int (*v14) (unsigned int, unsigned int);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
signed int v17 (signed char, unsigned char, signed int, signed short);
signed int (*v18) (signed char, unsigned char, signed int, signed short) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
extern unsigned int v27 (signed short, signed int, unsigned int, signed int);
extern unsigned int (*v28) (signed short, signed int, unsigned int, signed int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 7;
unsigned char v68 = 4;
unsigned int v67 = 3U;

signed int v17 (signed char v70, unsigned char v71, signed int v72, signed short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -2;
unsigned char v75 = 6;
signed short v74 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v77, unsigned short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 2U;
unsigned char v80 = 5;
unsigned int v79 = 6U;
trace++;
switch (trace)
{
case 3: 
return 2;
case 5: 
return v78;
case 7: 
{
signed int v82;
v82 = v23 ();
history[history_index++] = (int)v82;
}
break;
case 9: 
{
signed int v83;
v83 = v23 ();
history[history_index++] = (int)v83;
}
break;
case 11: 
return v78;
default: abort ();
}
}
}
}

signed int v7 (signed char v84, unsigned char v85, unsigned char v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 1;
unsigned short v89 = 4;
unsigned short v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
