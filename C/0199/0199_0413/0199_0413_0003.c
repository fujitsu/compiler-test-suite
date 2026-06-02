#include <stdlib.h>
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed short v9 (signed int, signed short);
extern signed short (*v10) (signed int, signed short);
void v11 (signed int, signed int, signed int);
void (*v12) (signed int, signed int, signed int) = v11;
extern unsigned int v13 (signed char, signed char, signed char);
extern unsigned int (*v14) (signed char, signed char, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned short (*v22) (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned int v23 (signed short, signed int, unsigned int);
extern unsigned int (*v24) (signed short, signed int, unsigned int);
extern signed int v25 (signed int, signed short);
extern signed int (*v26) (signed int, signed short);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v93 = -3;
unsigned char v92 = 2;
signed int v91 = 2;

signed char v29 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -2;
signed int v96 = 3;
signed char v95 = 3;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

void v11 (signed int v98, signed int v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 3;
signed short v102 = 2;
signed int v101 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v104;
unsigned int v105;
unsigned short v106;
signed char v107;
unsigned short v108;
v104 = 4U + 1U;
v105 = 5U + 3U;
v106 = 5 + 1;
v107 = v103 + 0;
v108 = v21 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 5: 
{
unsigned int v109;
unsigned int v110;
unsigned short v111;
signed char v112;
unsigned short v113;
v109 = 0U + 1U;
v110 = 3U + 4U;
v111 = 2 - 7;
v112 = v103 - 0;
v113 = v21 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned short v116 = 2;
unsigned short v115 = 0;
unsigned int v114 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
