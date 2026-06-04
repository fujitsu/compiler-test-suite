#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern signed short v3 (unsigned int, signed short);
extern signed short (*v4) (unsigned int, signed short);
extern signed int v5 (unsigned char, signed short);
extern signed int (*v6) (unsigned char, signed short);
extern signed char v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed char (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (signed char, signed int, signed char);
extern unsigned short (*v16) (signed char, signed int, signed char);
signed char v17 (unsigned short, unsigned short);
signed char (*v18) (unsigned short, unsigned short) = v17;
signed short v19 (signed int, unsigned int, unsigned char, unsigned char);
signed short (*v20) (signed int, unsigned int, unsigned char, unsigned char) = v19;
signed char v21 (signed int, signed char, unsigned int);
signed char (*v22) (signed int, signed char, unsigned int) = v21;
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed char v29 (signed int, signed int);
extern signed char (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v91 = -1;
unsigned int v90 = 3U;
signed int v89 = 1;

signed char v21 (signed int v92, signed char v93, unsigned int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 0;
unsigned int v96 = 3U;
unsigned char v95 = 4;
trace++;
switch (trace)
{
case 5: 
return 2;
case 7: 
return v97;
case 9: 
return 0;
case 11: 
return v93;
default: abort ();
}
}
}
}

signed short v19 (signed int v98, unsigned int v99, unsigned char v100, unsigned char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = -4;
unsigned char v103 = 7;
signed char v102 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (unsigned short v105, unsigned short v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 3;
signed int v108 = 1;
unsigned char v107 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed short v112 = -2;
signed char v111 = -3;
unsigned char v110 = 4;
trace++;
switch (trace)
{
case 2: 
return 2;
default: abort ();
}
}
}
}
