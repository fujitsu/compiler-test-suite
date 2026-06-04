#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed int);
static signed char (*v2) (signed int) = v1;
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern unsigned char v5 (signed int, unsigned short, signed char);
extern unsigned char (*v6) (signed int, unsigned short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed short v9 (void);
signed short (*v10) (void) = v9;
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned int v15 (signed int, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, unsigned short, unsigned int, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
signed char v21 (unsigned char, signed char, signed short, signed char);
signed char (*v22) (unsigned char, signed char, signed short, signed char) = v21;
extern signed int v23 (signed short, unsigned int, unsigned int, unsigned short);
extern signed int (*v24) (signed short, unsigned int, unsigned int, unsigned short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned char);
extern void v29 (signed short, signed char);
extern void (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed int v32 = 3;
unsigned short v31 = 7;

signed char v21 (unsigned char v34, signed char v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 5;
unsigned short v39 = 3;
signed char v38 = -2;
trace++;
switch (trace)
{
case 3: 
return -2;
case 9: 
return v38;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned int v43 = 7U;
unsigned int v42 = 0U;
signed int v41 = -1;
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
unsigned int v46 = 4U;
signed int v45 = 0;
signed short v44 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v47;
signed char v48;
signed short v49;
signed char v50;
signed char v51;
v47 = 5 - 1;
v48 = 3 + -3;
v49 = v44 + v44;
v50 = -1 - 0;
v51 = v21 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 4: 
return v44;
default: abort ();
}
}
}
}

static signed char v1 (signed int v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = 3;
unsigned int v54 = 5U;
unsigned short v53 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v56;
v56 = v7 ();
history[history_index++] = (int)v56;
}
break;
case 6: 
{
v17 ();
}
break;
case 14: 
return v55;
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
signed int v59;
signed char v60;
v59 = v32 + 3;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
