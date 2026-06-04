#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned short);
unsigned char (*v2) (unsigned int, unsigned short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed char, unsigned char, unsigned char);
extern signed int (*v12) (signed char, unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned int);
extern unsigned int (*v14) (unsigned char, signed short, unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern signed int v17 (signed short, unsigned char, signed char);
extern signed int (*v18) (signed short, unsigned char, signed char);
signed short v19 (signed short, unsigned char);
signed short (*v20) (signed short, unsigned char) = v19;
static unsigned int v21 (unsigned char, unsigned char);
static unsigned int (*v22) (unsigned char, unsigned char) = v21;
extern signed char v23 (unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char);
extern signed char v25 (signed int, unsigned int);
extern signed char (*v26) (signed int, unsigned int);
extern signed char v27 (signed short, signed char, unsigned char);
extern signed char (*v28) (signed short, signed char, unsigned char);
extern signed short v29 (unsigned int, unsigned short);
extern signed short (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 7U;
unsigned int v86 = 0U;
signed int v85 = -2;

static unsigned int v21 (unsigned char v88, unsigned char v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 3U;
unsigned short v91 = 0;
unsigned char v90 = 4;
trace++;
switch (trace)
{
case 7: 
return 1U;
default: abort ();
}
}
}
}

signed short v19 (signed short v93, unsigned char v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 3;
unsigned char v96 = 1;
signed short v95 = 0;
trace++;
switch (trace)
{
case 10: 
return -3;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v98, unsigned short v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 6U;
signed short v101 = 3;
unsigned short v100 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v103;
v103 = v3 ();
history[history_index++] = (int)v103;
}
break;
case 6: 
{
unsigned char v104;
unsigned char v105;
unsigned int v106;
v104 = 3 - 7;
v105 = 3 + 3;
v106 = v21 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 8: 
{
signed short v107;
unsigned char v108;
signed char v109;
signed int v110;
v107 = v101 + v101;
v108 = 4 - 7;
v109 = 0 + -3;
v110 = v17 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
