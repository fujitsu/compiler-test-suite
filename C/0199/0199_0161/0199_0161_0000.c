#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed int, unsigned char, signed short);
unsigned short (*v2) (signed int, unsigned char, signed short) = v1;
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
extern unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned short, signed short, signed short);
extern void (*v10) (unsigned short, signed short, signed short);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern signed char v17 (signed char, signed char);
extern signed char (*v18) (signed char, signed char);
extern void v19 (unsigned int, signed int, unsigned int, signed char);
extern void (*v20) (unsigned int, signed int, unsigned int, signed char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
static signed char v27 (signed char, unsigned int, signed short);
static signed char (*v28) (signed char, unsigned int, signed short) = v27;
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed short v32 = -4;
signed short v31 = 1;

static signed char v27 (signed char v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
signed short v38 = 2;
signed int v37 = -2;
trace++;
switch (trace)
{
case 7: 
return v34;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned char v42 = 0;
signed int v41 = 3;
unsigned int v40 = 5U;
trace++;
switch (trace)
{
case 2: 
return 1;
case 5: 
return -4;
case 10: 
{
unsigned int v43;
unsigned char v44;
v43 = 1U - 3U;
v44 = v29 (v43);
history[history_index++] = (int)v44;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned short v1 (signed int v45, unsigned char v46, signed short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 3;
unsigned int v49 = 3U;
signed short v48 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v51;
signed int v52;
v51 = v49 + v49;
v52 = v25 (v51);
history[history_index++] = (int)v52;
}
break;
case 4: 
{
signed char v53;
v53 = v23 ();
history[history_index++] = (int)v53;
}
break;
case 6: 
{
signed char v54;
unsigned int v55;
signed short v56;
signed char v57;
v54 = 3 - v50;
v55 = v49 - 1U;
v56 = v48 - v47;
v57 = v27 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 8: 
{
signed char v58;
signed char v59;
signed char v60;
v58 = v50 + -4;
v59 = 3 + 1;
v60 = v17 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return 7;
case 16: 
return 3;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v63;
unsigned char v64;
signed short v65;
unsigned short v66;
v63 = 1 + 1;
v64 = 2 - 6;
v65 = v32 + v32;
v66 = v1 (v63, v64, v65);
history[history_index++] = (int)v66;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
